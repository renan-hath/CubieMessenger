# **Done ✓** #

* Cubie is linked to Pal+ servers
* Cubie Space enabled
* Unlimited Custom Stickers
* YouTube fix
* Cubie Lite released
* Removed articles are hidden (Space)

# **In progress** % #

* Private News Feed

### Wonderland ∞ ###

* Aviary Editor fix
* Allow export_file_msg / other files beyond audio for transfer
* Allow support for GIFs
* Allow Cubie Audio Player to work in background
* Revive ASK messages
(Images: img_ask_msg_other, img_ask_msg_self, bg_ask_msg_self.9, bg_ask_msg_other.9 _____________________ Terms: askButton, askImageView, askMessageText, last_ask_location_msg, last_ask_picture_msg _____ Path: \nemo\message\model|view - askLocation|PictureMessage, MessageOtherView, MessageSelfView)
* Add more images for emoticons / store stickers / sticker effects

» Cubie Space

* Make articles go to the top when replied
(Pin Terms: update_top_forum_article, updateTopArticleItem)
* Notify every single post from favorite boards
(Terms: forum_reply_notification, ForumReplyNotification)
* Make forum tab count notifications like chat tab instead of showing a star
* Decrease delay from forum tab notification so it can be faster like chat tab (Terms: UnreadCount) _______________________________________________________ (Path: \nemo\forum\FavoriteBoardListAdapter, \model\ForumEvent)
* Remove post's character limit
(Path: \nemo\forum\ArticleReplyListFragment - Line 361, ForumImagePreviewFragment - Line 185)
* Change images' thumbnails resolution in posts
(Path: \nemo\forum\ForumImagePreviewFragment - Line 119)
* Support OR Hide unsupported posts

» Cubie Lite

* Allow other files beyond image for transfer