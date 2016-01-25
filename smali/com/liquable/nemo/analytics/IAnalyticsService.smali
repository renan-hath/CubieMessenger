.class public interface abstract Lcom/liquable/nemo/analytics/IAnalyticsService;
.super Ljava/lang/Object;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;,
        Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;
    }
.end annotation


# virtual methods
.method public abstract adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;)V
.end method

.method public abstract adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;Lcom/google/ads/AdRequest$ErrorCode;)V
.end method

.method public abstract addCustomSticker(Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;)V
.end method

.method public abstract addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V
.end method

.method public abstract addInstallRefferer(Ljava/lang/String;)V
.end method

.method public abstract backupManually()V
.end method

.method public abstract beginConnectToFacebook(Ljava/lang/String;)V
.end method

.method public abstract beginConnectToTwitter()V
.end method

.method public abstract beginPhoneVerification(Ljava/lang/String;)V
.end method

.method public abstract beginPhoneVerificationOnCancel()V
.end method

.method public abstract beginPhoneVerificationOnError(Ljava/lang/String;)V
.end method

.method public abstract beginPhoneVerificationOnError(Ljava/lang/Throwable;)V
.end method

.method public abstract beginRegistration()V
.end method

.method public abstract beginRestoringData()V
.end method

.method public abstract brokenDataMissingAccount()V
.end method

.method public abstract cancelOnLoginToFacebook()V
.end method

.method public abstract cancelOrFailOnLoginToTwitter(Ljava/lang/String;)V
.end method

.method public abstract changeFriendDisplayName()V
.end method

.method public abstract changeProfileCover()V
.end method

.method public abstract changeProfileNickname()V
.end method

.method public abstract changeProfileUserIcon()V
.end method

.method public abstract changeWallpaperUsingCustomizedPhoto()V
.end method

.method public abstract changeWallpaperWithDownloaded(Ljava/lang/String;)V
.end method

.method public abstract chattingSendAskLocationMessage(I)V
.end method

.method public abstract chattingSendAskPictureMessage(I)V
.end method

.method public abstract chattingSendAudioMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract chattingSendCameraPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "Lcom/liquable/nemo/analytics/PictureParameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract chattingSendCameraVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract chattingSendCustomStickerMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
.end method

.method public abstract chattingSendLocationMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract chattingSendPaintMessage(III)V
.end method

.method public abstract chattingSendPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;ILcom/liquable/nemo/analytics/PictureParameters;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "I",
            "Lcom/liquable/nemo/analytics/PictureParameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract chattingSendSecretPictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "Lcom/liquable/nemo/analytics/PictureParameters;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract chattingSendSecretTextMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
.end method

.method public abstract chattingSendStickerMessage(Ljava/lang/String;ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
.end method

.method public abstract chattingSendTextMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
.end method

.method public abstract chattingSendVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract chattingSendVoiceMessage(I)V
.end method

.method public abstract chattingSendYoutubeMessage(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clickAdwaysCampaignApp(Ljava/lang/String;)V
.end method

.method public abstract clickAdwaysCampaignSticker(Ljava/lang/String;)V
.end method

.method public abstract clickAdwaysStickerShopBanner()V
.end method

.method public abstract clickOnAdItem(JILjava/lang/String;)V
.end method

.method public abstract clickOnLocationSettingBtn()V
.end method

.method public abstract clickOnNoticeAds()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clickOnOpenApiAppMessage(Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;)V
.end method

.method public abstract clickOnPaintSettingBtn()V
.end method

.method public abstract clickOnPubChanneMessage(Ljava/lang/String;)V
.end method

.method public abstract clickOnStickerItemButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clickReactivationStickerNotification()V
.end method

.method public abstract connectToFacebook()V
.end method

.method public abstract connectToFacebookOnCancel()V
.end method

.method public abstract connectToFacebookOnError(Ljava/lang/Throwable;)V
.end method

.method public abstract connectToTwitter()V
.end method

.method public abstract createChatGroup()V
.end method

.method public abstract createForumArticle(Z)V
.end method

.method public abstract createForumArticleReply(Z)V
.end method

.method public abstract createForumBoard(Lcom/liquable/nemo/model/forum/BoardCategory;)V
.end method

.method public abstract createInActivity(Landroid/app/Activity;)V
.end method

.method public abstract createUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cubieProfileUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)V
.end method

.method public abstract deleteAccount(Ljava/lang/String;)V
.end method

.method public abstract deleteCustomSticker()V
.end method

.method public abstract destroyInActivity(Landroid/app/Activity;)V
.end method

.method public abstract downloadStickerWhenReceiveUnknownStickerMessage(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract editPhoto()V
.end method

.method public abstract enableAutoSyncContact(Ljava/lang/String;Z)V
.end method

.method public abstract enableReceiveMessage(Z)V
.end method

.method public abstract endSessionInActivity(Landroid/app/Activity;)V
.end method

.method public abstract enterForumBoard(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;)V
.end method

.method public abstract enterIntroduction()V
.end method

.method public abstract enterRobotGroup()V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Exception;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract exportChatGroupMessages()V
.end method

.method public abstract favoriteBoardFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V
.end method

.method public abstract finishAdwaysCampaign(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract finishPhoneVerification()V
.end method

.method public abstract finishRestoringData()V
.end method

.method public abstract finishRestoringDataOnError()V
.end method

.method public abstract firstTimeEnteringMainActivity()V
.end method

.method public abstract followCubieOnTwitter()V
.end method

.method public abstract forwardMessage(Lcom/liquable/nemo/message/model/DomainMessage;ILjava/lang/String;)V
.end method

.method public abstract getUserAbTestGroup()Lcom/liquable/nemo/analytics/AbTestGroup;
.end method

.method public abstract goToCubieSpace()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract goToDesktopPage()V
.end method

.method public abstract goToMediaLibrary()V
.end method

.method public abstract goToNoticeView()V
.end method

.method public abstract goToProfilePage(Ljava/lang/String;)V
.end method

.method public abstract goToStickerManage(Ljava/lang/String;)V
.end method

.method public abstract goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V
.end method

.method public abstract hideFriendRelationship(Z)V
.end method

.method public abstract importFriends(Ljava/lang/String;I)V
.end method

.method public abstract importFriendsSkip(Ljava/lang/String;)V
.end method

.method public abstract inviteFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)V
.end method

.method public abstract isInTestGroup(Landroid/content/Context;Lcom/liquable/nemo/analytics/AbTestKey;)Z
.end method

.method public abstract leaveIntroduction(Ljava/lang/String;J)V
.end method

.method public abstract likeArticle()V
.end method

.method public abstract likeCubieFacebookPage()V
.end method

.method public abstract limitedTimeOfferReactivationSticker()V
.end method

.method public abstract migrateFromC2DMToGCM()V
.end method

.method public abstract muteChatGroup(Z)V
.end method

.method public abstract notifyDetectedExternalImage()V
.end method

.method public abstract onForumCategorySelect(Lcom/liquable/nemo/model/forum/BoardCategory;)V
.end method

.method public abstract pasteToDrawingBoard(Ljava/lang/Class;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract phoneVerificationError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract pickS3EndPoint(Ljava/lang/String;J)V
.end method

.method public abstract privacyExcludeInRecommendSetting(Z)V
.end method

.method public abstract privacyHideRecommendListSetting(Z)V
.end method

.method public abstract purchaseSuccessWithProduct(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract purchaseSuccessWithStickerItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract receiveAskLocationMessage()V
.end method

.method public abstract receiveAskPictureMessage()V
.end method

.method public abstract receiveAudioMessage()V
.end method

.method public abstract receiveCustomStickerMessage()V
.end method

.method public abstract receiveFriendInvitation(I)V
.end method

.method public abstract receiveLikePictureMessage()V
.end method

.method public abstract receiveLocationMessage()V
.end method

.method public abstract receiveOpenApiAppMessage()V
.end method

.method public abstract receivePaintMessage()V
.end method

.method public abstract receivePictureMessage()V
.end method

.method public abstract receivePubChannelMessage()V
.end method

.method public abstract receiveReactivationStickerNotification()V
.end method

.method public abstract receiveSecretTextMessage()V
.end method

.method public abstract receiveStickerMessage()V
.end method

.method public abstract receiveTextMessage()V
.end method

.method public abstract receiveVideoMessage()V
.end method

.method public abstract receiveVoiceMessage()V
.end method

.method public abstract receiveYoutubeMessage()V
.end method

.method public abstract refererFromFacebookUrl(Ljava/lang/String;)V
.end method

.method public abstract registerSubAccount()V
.end method

.method public abstract replyInChattingActivity()V
.end method

.method public abstract resumeSessionInActivity(Landroid/app/Activity;)V
.end method

.method public abstract retainNonConfigurationInstanceInActivity()V
.end method

.method public abstract savePaintInChattingActivity()V
.end method

.method public abstract selectMyAccountIcon()V
.end method

.method public abstract selectMyAccountIconSkip()V
.end method

.method public abstract sendLikePictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;)V
.end method

.method public abstract setChatGroupCountForGroup(I)V
.end method

.method public abstract setChatGroupCountForOneToOne(I)V
.end method

.method public abstract setCubieHeadState(Ljava/lang/String;)V
.end method

.method public abstract setFriend(I)V
.end method

.method public abstract setGroup(I)V
.end method

.method public abstract setHasApp(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNotificationChange(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPasscodeLock()V
.end method

.method public abstract setUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shareAppBySms(Ljava/lang/String;)V
.end method

.method public abstract shareAppFromFacebook()V
.end method

.method public abstract shareAppFromFbTimelines()V
.end method

.method public abstract shareAppFromTwitterDM()V
.end method

.method public abstract shareAppFromTwitterTimelines()V
.end method

.method public abstract shareAppSuccessFromFacebook()V
.end method

.method public abstract shareAppSuccessFromFbTimelines()V
.end method

.method public abstract shareAppSuccessFromTwitterDM()V
.end method

.method public abstract shareAppSuccessFromTwitterTimelines()V
.end method

.method public abstract shareAppUsingOtherApps(Ljava/lang/String;)V
.end method

.method public abstract shareAppWithFriend()V
.end method

.method public abstract shareArticle(Ljava/lang/String;)V
.end method

.method public abstract shareImageWithOtherApps(Ljava/lang/String;)V
.end method

.method public abstract shareMediaMessageViaImageViewer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shareMediaViaDetectedExternalImage([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shareMediaViaExternalIntent([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shareMediaViaShareBoard([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sharePaintInChattingActivity()V
.end method

.method public abstract sharePaintToFacebookInChattingActivity(Ljava/lang/String;)V
.end method

.method public abstract shareVideoWithOtherApps(Ljava/lang/String;)V
.end method

.method public abstract showAdwaysAdsBanner()V
.end method

.method public abstract showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V
.end method

.method public abstract skipSyncingDataFromServer()V
.end method

.method public abstract spacePublicProfileSetting(Z)V
.end method

.method public abstract startSessionInActivity(Landroid/app/Activity;)V
.end method

.method public abstract syncContactsDaily(I)V
.end method

.method public abstract syncContactsInMainActivity(I)V
.end method

.method public abstract syncModifiedContacts(I)V
.end method

.method public abstract upgradeCubieWhenReceiveUnknownStickerMessage()V
.end method

.method public abstract viewStickerItem(Ljava/lang/String;)V
.end method

.method public abstract voipAnswer(Z)V
.end method

.method public abstract voipDial(Ljava/lang/String;Z)V
.end method

.method public abstract voipDialerCallLog(IJ)V
.end method

.method public abstract voipMissedCall()V
.end method

.method public abstract voipReject()V
.end method
