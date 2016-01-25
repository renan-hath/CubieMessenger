.class public Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ImportFacebookFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;
    }
.end annotation


# static fields
.field private static final AUTHORIZE_FACEBOOK_REQUEST_CODE:I


# instance fields
.field private facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->preloadMyPicture()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)Lcom/liquable/nemo/facebook/FacebookSession;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    return-object v0
.end method

.method private finishAndGoToSelectMyAccountIcon()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finish()V

    .line 99
    return-void
.end method

.method private preloadMyPicture()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$3;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 190
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method


# virtual methods
.method protected getActionBarStyle()Lcom/liquable/nemo/BaseActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->NO:Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finish()V

    .line 110
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onBackPressed()V

    .line 111
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/facebook/FacebookSession;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d02ee

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 126
    const v2, 0x7f030032

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->setContentView(I)V

    .line 128
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/facebook/FacebookSession;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 130
    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "skipBtn":Landroid/view/View;
    new-instance v2, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "okBtn":Landroid/view/View;
    new-instance v2, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method
