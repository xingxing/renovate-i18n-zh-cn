.PONY: update

messages.po:
	msginit --input=../renovate/i18n/messages.pot \
            --output=messages.po \
            --locale=zh-CN

update:
	echo '123'
