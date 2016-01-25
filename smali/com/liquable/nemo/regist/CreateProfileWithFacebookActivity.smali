.class public Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
.super Lcom/liquable/nemo/regist/AbstractRegistActivity;
.source "CreateProfileWithFacebookActivity.java"


# static fields
.field private static final AUTHORIZE_FACEBOOK_REQUEST_CODE:I = 0x1

.field private static final RESTORE_DATA_COMPLETED:I

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field private facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showFacebookErrorToast()V

    return-void
.end method

.method static synthetic access$302(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    return-object p1
.end method

.method static synthetic access$400(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->registerToServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showAsyncErrorToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->startRestoreDataActivity(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method

.method private failFacebookLogin()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->finish()V

    .line 44
    return-void
.end method

.method private goToMain()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method private importFacebookFriendsAndProfilePictureInBackground(Lcom/liquable/nemo/model/account/ProfileDto;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 2
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;
    .param p2, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 52
    new-instance v0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Landroid/content/Context;Lcom/liquable/nemo/model/account/ProfileDto;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 80
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->execute([Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method private registerToServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 2
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 167
    new-instance v0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 205
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->execute([Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method private showAsyncErrorToast()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$5;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method private showFacebookErrorToast()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$6;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "i18nKey"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private startRestoreDataActivity(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 2
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 236
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 238
    .local v0, "createIntent":Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 239
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-virtual {v2, p1, p2, p3}, Lcom/liquable/nemo/facebook/FacebookSession;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 94
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    invoke-static {p3}, Lcom/liquable/nemo/regist/RestoreDataActivity;->getProfileDtoFromResult(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v1

    .line 97
    .local v1, "profileDto":Lcom/liquable/nemo/model/account/ProfileDto;
    if-eqz v1, :cond_3

    .line 98
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/regist/RegistrationDaemon;->finishRegistraiton(Lcom/liquable/nemo/model/account/ProfileDto;)Z

    move-result v0

    .line 99
    .local v0, "finishRegistraiton":Z
    if-eqz v0, :cond_2

    .line 100
    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->importFacebookFriendsAndProfilePictureInBackground(Lcom/liquable/nemo/model/account/ProfileDto;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    .line 101
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->goToMain()V

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d037f

    .line 104
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01c5

    .line 105
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0069

    new-instance v4, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$2;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 120
    .end local v0    # "finishRegistraiton":Z
    :cond_3
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showAsyncErrorToast()V

    .line 121
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onNotLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/facebook/FacebookSession;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;-><init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForRead(ZILcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V

    .line 161
    return-void
.end method

.method protected onNotLoggedResume()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
