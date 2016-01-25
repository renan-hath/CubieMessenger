.class public Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AviarySystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;,
        Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z

.field private static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z

    return v0
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-static {p0}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->getParentPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParentPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string/jumbo v1, "com.aviary.android.feather.plugins."

    .line 245
    .local v1, "parentPkg":Ljava/lang/String;
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "matchedIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    return-object v1
.end method

.method private handlePackage(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const/4 v7, 0x0

    .line 88
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 89
    .local v5, "is_sticker":I
    const/4 v4, 0x0

    .line 90
    .local v4, "is_filter":I
    const/4 v6, 0x0

    .line 91
    .local v6, "is_tool":I
    const/4 v3, 0x0

    .line 94
    .local v3, "is_border":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 99
    :goto_0
    if-eqz v7, :cond_3

    .line 101
    const/4 v8, 0x0

    .line 102
    .local v8, "resid":I
    const-string/jumbo v9, "is_sticker"

    const-string/jumbo v10, "integer"

    invoke-virtual {v7, v9, v10, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 103
    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 105
    :cond_0
    const-string/jumbo v9, "is_filter"

    const-string/jumbo v10, "integer"

    invoke-virtual {v7, v9, v10, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 106
    if-eqz v8, :cond_1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 108
    :cond_1
    const-string/jumbo v9, "is_tool"

    const-string/jumbo v10, "integer"

    invoke-virtual {v7, v9, v10, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 109
    if-eqz v8, :cond_2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 111
    :cond_2
    const-string/jumbo v9, "is_border"

    const-string/jumbo v10, "integer"

    invoke-virtual {v7, v9, v10, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 112
    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 115
    .end local v8    # "resid":I
    :cond_3
    const/4 v9, 0x0

    invoke-static {p1, p2, v9}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 117
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v9, "PACKAGE_NAME"

    invoke-virtual {p3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v9, "IS_STICKER"

    invoke-virtual {p3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string/jumbo v9, "IS_FILTER"

    invoke-virtual {p3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string/jumbo v9, "IS_TOOL"

    invoke-virtual {p3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string/jumbo v9, "IS_BORDER"

    invoke-virtual {p3, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string/jumbo v9, "APPLICATION_CONTEXT"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v10, "PACKAGE_VERSION"

    if-eqz v2, :cond_5

    iget v9, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_1
    invoke-virtual {p3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string/jumbo v9, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 126
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    const-string/jumbo v0, "effects"

    .line 128
    .local v0, "assetType":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->trackPackageAdded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0    # "assetType":Ljava/lang/String;
    :cond_4
    return-void

    .line 95
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 123
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 126
    :cond_6
    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    const-string/jumbo v0, "frames"

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "stickers"

    goto :goto_2
.end method

.method private handlePackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 198
    .local v1, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->isReplacing(Landroid/os/Bundle;)Z

    move-result v2

    .line 200
    .local v2, "is_replacing":Z
    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 201
    const-string/jumbo v5, "com.aviary.android.feather.plugins."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    invoke-direct {p0, p1, v4, v3}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handlePackage(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 205
    const-string/jumbo v5, "ACTION"

    const-string/jumbo v6, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    .end local v3    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handlePackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 168
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    .local v1, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->isReplacing(Landroid/os/Bundle;)Z

    move-result v2

    .line 173
    .local v2, "is_replacing":Z
    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 174
    const-string/jumbo v5, "com.aviary.android.feather.plugins."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    invoke-direct {p0, p1, v4, v3}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handlePackage(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 178
    const-string/jumbo v5, "ACTION"

    const-string/jumbo v6, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    .end local v3    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handlePackageReplaced(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 147
    const-string/jumbo v3, "com.aviary.android.feather.plugins."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "aviary.android.intent.ACTION_PLUGIN_REPLACED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "newIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    invoke-direct {p0, p1, v2, v1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handlePackage(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 151
    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "aviary.android.intent.ACTION_PLUGIN_REPLACED"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private isReplacing(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 238
    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private trackPackageAdded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchasedPkgName"    # Ljava/lang/String;
    .param p3, "assetType"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-boolean v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "system-receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] trackPackageAdded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;

    invoke-direct {v0, p1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$TrackPackageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handlePackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handlePackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->handlePackageReplaced(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
