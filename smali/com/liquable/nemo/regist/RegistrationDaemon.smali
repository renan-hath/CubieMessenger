.class public Lcom/liquable/nemo/regist/RegistrationDaemon;
.super Ljava/lang/Object;
.source "RegistrationDaemon.java"


# static fields
.field public static final ANDROID_PROVIDER_TELEPHONY_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final FINISH_CONNECT_PHONE_ACTION:Ljava/lang/String; = "com.liquable.nemo.regist.FINISH_CONNECT_PHONE_ACTION"

.field public static final FINISH_SIGN_UP_ACTION:Ljava/lang/String; = "com.liquable.nemo.regist.FINISH_SIGN_UP_ACTION"


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    .line 88
    iput-object p1, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RegistrationDaemon;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    return-object v0
.end method

.method private afterProfileCreated(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 4
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 92
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/util/Pref;->restoreAccountPreferenceFromProfile(Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 93
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/Pref;->setProfileCreateTime(J)V

    .line 94
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getRpcAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setRpcAccessToken(Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->isUseOfflineSequence()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setUseOfflineSequence(Z)V

    .line 96
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    .line 97
    .local v0, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static createPhoneModel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    const-string/jumbo v1, "model: %s, manufacturer: %s, deivce: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "phoneModel":Ljava/lang/String;
    return-object v0
.end method

.method public static isValidPhoneCharacters(Ljava/lang/String;)Z
    .locals 1
    .param p0, "rawPhone"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "\\s*\\+?[0-9]+\\#?[0-9]*\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private setDefaultWallpaper()V
    .locals 7

    .prologue
    .line 357
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    sget-object v6, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->WALLPAPER_17:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    invoke-virtual {v6}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Pref;->saveDefaultWallpaperCode(Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02010f

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 361
    .local v4, "resource":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->WALLPAPER_17:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    invoke-virtual {v5}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 362
    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 364
    .local v0, "defaultWallPaperFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 366
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 373
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "default wallpaper not found"

    invoke-virtual {v5, v6, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 368
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public connectPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pincode"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "countryCodeIso3166"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/model/InvalidPincodeException;,
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 105
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getToken()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/user/model/UserManager;->connectPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v6

    .line 111
    .local v6, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v6}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v6}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v6}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/util/Pref;->saveAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setAutoScheduleSyncContactsEnable(Z)V

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.liquable.nemo.regist.FINISH_CONNECT_PHONE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public createRobot()V
    .locals 4

    .prologue
    .line 122
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    const v3, 0x7f0d044f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->createRobotGroup(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 123
    .local v0, "robotGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    new-instance v1, Lcom/liquable/nemo/regist/RegistrationDaemon$1;

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/regist/RegistrationDaemon$1;-><init>(Lcom/liquable/nemo/regist/RegistrationDaemon;Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 194
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->execute([Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public extractSmsPincode(Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 203
    const-string/jumbo v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v7, v9

    .line 225
    :cond_0
    :goto_0
    return-object v7

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 207
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "pdus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v6, v8

    check-cast v6, [Ljava/lang/Object;

    .line 208
    .local v6, "pdus":[Ljava/lang/Object;
    array-length v8, v6

    new-array v4, v8, [Landroid/telephony/SmsMessage;

    .line 209
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    const-string/jumbo v8, ":(\\d{4})"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 211
    .local v5, "p":Ljava/util/regex/Pattern;
    const/4 v7, 0x0

    .line 212
    .local v7, "pincode":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 213
    aget-object v8, v6, v2

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    .line 214
    aget-object v8, v4, v2

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 216
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 217
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 222
    .end local v0    # "body":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_0

    :cond_3
    move-object v7, v9

    .line 225
    goto :goto_0

    .line 212
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public findOrCreateProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 9
    .param p1, "fbuid"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "gender"    # Ljava/lang/String;
    .param p5, "birthday"    # Ljava/lang/String;
    .param p6, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/CreateAccountWithFacebookDuplicateException;,
            Lcom/liquable/nemo/model/FacebookAuthenticationException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    .line 237
    invoke-static {v1}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 235
    invoke-virtual/range {v0 .. v7}, Lcom/liquable/nemo/regist/model/RegistrationManager;->findOrCreateProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v8

    .line 243
    .local v8, "profileDto":Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->finishPhoneVerification()V

    .line 245
    invoke-direct {p0, v8}, Lcom/liquable/nemo/regist/RegistrationDaemon;->afterProfileCreated(Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 247
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    sget-object v1, Lcom/liquable/nemo/regist/RegistrationType;->FACEBOOOK:Lcom/liquable/nemo/regist/RegistrationType;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setRegistrationType(Lcom/liquable/nemo/regist/RegistrationType;)V

    .line 249
    return-object v8
.end method

.method public findOrCreateProfileWithPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 10
    .param p1, "pincode"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "countryCodeIso3166"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InvalidPincodeException;,
            Lcom/liquable/nemo/model/CreateAccountDuplicateException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/liquable/nemo/regist/RegistrationDaemon;->createPhoneModel()Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "phoneModel":Ljava/lang/String;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    .line 263
    invoke-static {v2}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 259
    invoke-virtual/range {v0 .. v8}, Lcom/liquable/nemo/regist/model/RegistrationManager;->findOrCreateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v9

    .line 268
    .local v9, "profileDto":Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->finishPhoneVerification()V

    .line 270
    invoke-direct {p0, v9}, Lcom/liquable/nemo/regist/RegistrationDaemon;->afterProfileCreated(Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 272
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    sget-object v1, Lcom/liquable/nemo/regist/RegistrationType;->PHONE:Lcom/liquable/nemo/regist/RegistrationType;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setRegistrationType(Lcom/liquable/nemo/regist/RegistrationType;)V

    .line 274
    return-object v9
.end method

.method public finishRegistraiton(Lcom/liquable/nemo/model/account/ProfileDto;)Z
    .locals 8
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    .line 280
    .local v0, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v7

    .line 280
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/liquable/nemo/util/Pref;->saveAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 285
    .local v1, "saveAccountResult":Z
    if-nez v1, :cond_0

    .line 315
    :goto_0
    return v2

    .line 289
    :cond_0
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getFbuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Pref;->setFbuid(Ljava/lang/String;)V

    .line 291
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    iget-object v4, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/liquable/nemo/background/Scheduler;->init(Landroid/content/Context;J)V

    .line 293
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Pref;->setTriggerGetCallerId(Z)V

    .line 294
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Pref;->setAndroidAccountCreated(Z)V

    .line 297
    iget-object v3, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    new-instance v4, Lcom/liquable/nemo/background/SyncStickerRootTask;

    invoke-direct {v4}, Lcom/liquable/nemo/background/SyncStickerRootTask;-><init>()V

    invoke-static {v3, v4}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 300
    iget-object v3, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/c2dm/C2DMessaging;->clearGcmRegistrationId(Landroid/content/Context;)V

    .line 302
    iget-object v3, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    const-class v6, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 303
    iget-object v3, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    const-class v6, Lcom/liquable/nemo/android/service/RegistrationAndroidService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 304
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v4, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadMyIcon(Landroid/content/Context;)V

    .line 305
    invoke-direct {p0}, Lcom/liquable/nemo/regist/RegistrationDaemon;->setDefaultWallpaper()V

    .line 308
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Pref;->setShowRecentPictureGroup(Z)V

    .line 310
    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.liquable.nemo.regist.FINISH_SIGN_UP_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RegistrationDaemon;->isFirstLogin(Lcom/liquable/nemo/model/account/ProfileDto;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/RegistrationDaemon;->createRobot()V

    .line 315
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCountryNameAndCodeData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 320
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 324
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public isFirstLogin(Lcom/liquable/nemo/model/account/ProfileDto;)Z
    .locals 4
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getCreateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPincode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "inputPhoneNumber"    # Ljava/lang/String;
    .param p2, "countryCodeIso3166"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/model/InvalidSmsNumberException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 333
    const-string/jumbo v4, ""

    .line 334
    .local v4, "mcc":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 336
    .local v5, "mnc":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 337
    .local v7, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_0

    .line 338
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "networkOperator":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 340
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    .end local v6    # "networkOperator":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 347
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->generateToken()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    .line 345
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/regist/model/RegistrationManager;->requestPincode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public validateName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 377
    :cond_0
    const v0, 0x7f0d038b

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
