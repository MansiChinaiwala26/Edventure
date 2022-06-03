#import "MKMIME_TextPart.h"

#import <libetpan/libetpan.h>
#import "MailKitTypes.h"

@implementation MKMIME_TextPart
+ (id) mimeTextPartWithString:(NSString *) str 
{
	return [[[MKMIME_TextPart alloc] initWithString:str] autorelease];
}

- (id) initWithString:(NSString *) string 
{
	self = [super init];     
	
	if(self) {
		[self setString:string];
	}   
	
	return self;
}

- (id) content 
{
	if(mMimeFields != NULL) 
	{
		char *converted;
		size_t converted_len;
		
		char *source_charset = mMimeFields->fld_content_charset;
		if(source_charset == NULL) {
			source_charset = DEST_CHARSET;
		}
		
		int r = charconv_buffer(DEST_CHARSET, source_charset,
								self.data.bytes, self.data.length,
								&converted, &converted_len);
		NSString *str = @"";
		if(r == MAIL_CHARCONV_NO_ERROR) {
			NSData *newData = [NSData dataWithBytes:converted length:converted_len];
			str = [[[NSString alloc] initWithData:newData encoding:NSUTF8StringEncoding] autorelease];
		}      
		
		charconv_buffer_free(converted);      
		
		return str;
	} 
	else {
		return [[[NSString alloc] initWithData:self.data encoding:NSUTF8StringEncoding] autorelease];
	}
}

- (void) setString:(NSString *) str 
{
	self.data    = [str dataUsingEncoding:NSUTF8StringEncoding];
	self.fetched = YES;
}

- (struct mailmime *) buildMIMEStruct 
{
	struct mailmime_fields *mime_fields;
	struct mailmime *mime_sub;
	struct mailmime_content *content;
	struct mailmime_parameter *param;
	int r;

	mime_fields = mailmime_fields_new_encoding(MAILMIME_MECHANISM_8BIT);
	assert(mime_fields != NULL);

	content = mailmime_content_new_with_str("text/plain");
	assert(content != NULL);

	param = mailmime_parameter_new(strdup("charset"), strdup(DEST_CHARSET));
	assert(param != NULL);
	
	r = clist_append(content->ct_parameters, param);
	assert(r >= 0);

	mime_sub = mailmime_new_empty(content, mime_fields);
	assert(mime_sub != NULL);
	NSString *str = [self content];
	r = mailmime_set_body_text(mime_sub, strdup([str cStringUsingEncoding:NSUTF8StringEncoding]), [str length]);
	assert(r == MAILIMF_NO_ERROR);   
	
	return mime_sub;
}
@end