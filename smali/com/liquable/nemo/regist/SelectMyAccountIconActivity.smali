.class public Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "SelectMyAccountIconActivity.java"


# static fields
.field protected static final CHOOSE_ICON_FROM_GALLERY_REQUEST_CODE:I


# instance fields
.field private accountIconImageView:Landroid/widget/ImageView;

.field private iconFile:Ljava/io/File;

.field private nicknameEditText:Landroid/widget/EditText;

.field private okBtn:Landroid/view/View;

.field private tempFileFromGallery:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->updateIcon(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onOK()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->finishAndGoToMain()V

    return-void
.end method

.method private findGoogleProfileIcon()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;-><init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 72
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method private finishAndGoToMain()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->finish()V

    .line 84
    return-void
.end method

.method private onOK()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->nicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "inputName":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->needToInputName()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v1, p0, v0}, Lcom/liquable/nemo/regist/RegistrationDaemon;->validateName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v1, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;

    invoke-direct {v1, p0, p0, v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;-><init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateIcon(Ljava/io/File;)V
    .locals 2
    .param p1, "newIconFile"    # Ljava/io/File;

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->accountIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;

    .line 230
    return-void
.end method


# virtual methods
.method protected getActionBarStyle()Lcom/liquable/nemo/BaseActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->NO:Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->needToInputName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->finishAndGoToMain()V

    goto :goto_0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 103
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;

    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->updateIcon(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    .line 115
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d046d

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 116
    const v3, 0x7f03003f

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->setContentView(I)V

    .line 118
    const v3, 0x7f0800cd

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->nicknameEditText:Landroid/widget/EditText;

    .line 119
    iget-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->nicknameEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$2;-><init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 129
    const v3, 0x7f0800fc

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->accountIconImageView:Landroid/widget/ImageView;

    .line 131
    const v3, 0x7f080063

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->okBtn:Landroid/view/View;

    .line 132
    iget-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->okBtn:Landroid/view/View;

    new-instance v4, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$3;-><init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    invoke-virtual {v3}, Lcom/liquable/nemo/facebook/FacebookDaemon;->takePreloadedMyPicture()Ljava/io/File;

    move-result-object v1

    .line 140
    .local v1, "preloadedMyPicture":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->updateIcon(Ljava/io/File;)V

    .line 146
    :goto_0
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;

    .line 148
    const v3, 0x7f0800fd

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "chooseFromGalleryBtn":Landroid/view/View;
    new-instance v3, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;-><init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v3, 0x7f0800c6

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "skipBtn":Landroid/view/View;
    new-instance v3, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$5;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$5;-><init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->needToInputName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :goto_1
    return-void

    .line 143
    .end local v0    # "chooseFromGalleryBtn":Landroid/view/View;
    .end local v2    # "skipBtn":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findGoogleProfileIcon()V

    goto :goto_0

    .line 178
    .restart local v0    # "chooseFromGalleryBtn":Landroid/view/View;
    .restart local v2    # "skipBtn":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->nicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method
