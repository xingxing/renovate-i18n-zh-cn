.PHONY: messages.pot update

update: messages.pot messages.po
	@msgmerge --update messages.po messages.pot

messages.pot:
	@curl 'https://raw.githubusercontent.com/xingxing/renovate-i18n/main/messages.pot' -s -o messages.pot

messages.po:
	@msginit --input=../renovate/i18n/messages.pot \
            --output=messages.po \
            --locale=zh-CN
