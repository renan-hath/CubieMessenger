.class public Lcom/liquable/nemo/sdk/ConnectActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ConnectActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private agreeBtn:Landroid/view/View;

.field private appIcon:Landroid/widget/ImageView;

.field private appIconUrl:Ljava/lang/String;

.field private appName:Landroid/widget/TextView;

.field private authorizeLayout:Landroid/view/View;

.field private disagreeBtn:Landroid/view/View;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isBroadcastReceiverRegistered:Z

.field private loadingView:Landroid/view/View;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/liquable/nemo/sdk/ConnectActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sdk/ConnectActivity$1;-><init>(Lcom/liquable/nemo/sdk/ConnectActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sdk/ConnectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sdk/ConnectActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->loadAppIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sdk/ConnectActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sdk/ConnectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/sdk/ConnectActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sdk/ConnectActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/sdk/ConnectActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sdk/ConnectActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->authorizeLayout:Landroid/view/View;

    return-object v0
.end method

.method private authorizeApp(Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
    .locals 3
    .param p1, "connectParameters"    # Lcom/liquable/nemo/sdk/model/ConnectParameters;

    .prologue
    .line 61
    sget-object v0, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "authorizeApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/liquable/nemo/sdk/ConnectActivity$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity$2;-><init>(Lcom/liquable/nemo/sdk/ConnectActivity;Landroid/content/Context;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 107
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sdk/ConnectActivity$2;->execute([Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method private extractConnectParametersFromIntent()Lcom/liquable/nemo/sdk/model/ConnectParameters;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 135
    const-string/jumbo v3, "no intent"

    invoke-direct {p0, v3}, Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.cubie.openapi.sdk.connect"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    const-string/jumbo v3, "action not matched"

    invoke-direct {p0, v3}, Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 145
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 146
    const-string/jumbo v3, "no intent extras"

    invoke-direct {p0, v3}, Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {v1}, Lcom/liquable/nemo/sdk/model/ConnectParameters;->fromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/sdk/model/ConnectParameters;

    move-result-object v0

    .line 151
    .local v0, "connectParameters":Lcom/liquable/nemo/sdk/model/ConnectParameters;
    goto :goto_0
.end method

.method private finishWithError(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishWithError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d01c3

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/sdk/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->finish()V

    .line 173
    return-void
.end method

.method private loadAppIcon()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->appIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/liquable/nemo/util/RoundedLoadableImage;

    iget-object v3, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->appIconUrl:Ljava/lang/String;

    sget-object v4, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_BUTTON:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/4 v5, 0x0

    .line 208
    invoke-static {v3, v4, v6, v6, v5}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIZ)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v2, v3, v6, v6, v4}, Lcom/liquable/nemo/util/RoundedLoadableImage;-><init>(Lcom/liquable/nemo/util/LoadableImage;III)V

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 213
    return-void
.end method

.method private registBroadCastReceiver()V
    .locals 2

    .prologue
    .line 245
    iget-boolean v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->isBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->isBroadcastReceiverRegistered:Z

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregistBroadcastReceiver()V
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->isBroadcastReceiverRegistered:Z

    .line 259
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected displayAuthorizeDialog(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
    .locals 3
    .param p1, "openApiAppDto"    # Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .param p2, "loginCredential"    # Lcom/liquable/nemo/sdk/model/ConnectParameters;

    .prologue
    .line 112
    sget-object v0, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displayAuthorizeDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->authorizeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->appIconUrl:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->loadAppIcon()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->agreeBtn:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/sdk/ConnectActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/liquable/nemo/sdk/ConnectActivity$3;-><init>(Lcom/liquable/nemo/sdk/ConnectActivity;Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method protected finishWithAccessToken(Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;)V
    .locals 7
    .param p1, "result"    # Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    .prologue
    .line 155
    sget-object v1, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishWithAccessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v6, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 158
    new-instance v0, Lcom/liquable/nemo/sdk/model/AccessToken;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->getOpenApiAppId()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {p1}, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->getExpireTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sdk/model/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 162
    .local v0, "accessToken":Lcom/liquable/nemo/sdk/model/AccessToken;
    sget-object v1, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/model/AccessToken;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    .end local v0    # "accessToken":Lcom/liquable/nemo/sdk/model/AccessToken;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v6}, Lcom/liquable/nemo/sdk/ConnectActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->finish()V

    .line 167
    return-void
.end method

.method protected getAccessToken(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
    .locals 3
    .param p1, "openApiAppDto"    # Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .param p2, "loginCredential"    # Lcom/liquable/nemo/sdk/model/ConnectParameters;

    .prologue
    .line 177
    sget-object v0, Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccessToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Lcom/liquable/nemo/sdk/ConnectActivity$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/liquable/nemo/sdk/ConnectActivity$4;-><init>(Lcom/liquable/nemo/sdk/ConnectActivity;Landroid/content/Context;Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 203
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sdk/ConnectActivity$4;->execute([Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->unregistBroadcastReceiver()V

    .line 218
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 219
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 226
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->setContentView(I)V

    .line 227
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 228
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->loadingView:Landroid/view/View;

    .line 229
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->authorizeLayout:Landroid/view/View;

    .line 230
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->agreeBtn:Landroid/view/View;

    .line 231
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->appIcon:Landroid/widget/ImageView;

    .line 232
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->appName:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->disagreeBtn:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity;->disagreeBtn:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/sdk/ConnectActivity$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sdk/ConnectActivity$5;-><init>(Lcom/liquable/nemo/sdk/ConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-direct {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->extractConnectParametersFromIntent()Lcom/liquable/nemo/sdk/model/ConnectParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->authorizeApp(Lcom/liquable/nemo/sdk/model/ConnectParameters;)V

    .line 241
    invoke-direct {p0}, Lcom/liquable/nemo/sdk/ConnectActivity;->registBroadCastReceiver()V

    .line 242
    return-void
.end method
