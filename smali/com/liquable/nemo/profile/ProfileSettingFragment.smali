.class public Lcom/liquable/nemo/profile/ProfileSettingFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ProfileSettingFragment.java"


# static fields
.field private static final LOGIN_TO_FACEBOOK_REQUEST_CODE:I = 0xc

.field private static final PICK_COVER_CODE:I = 0xd

.field private static final PICK_PHOTO_CODE:I = 0xb


# instance fields
.field private shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

.field private shareItem:Lcom/actionbarsherlock/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getTempUserIcon()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->resetShareItem()V

    return-void
.end method

.method private getTempUserIcon()Ljava/io/File;
    .locals 3

    .prologue
    .line 247
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 248
    .local v0, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/liquable/nemo/storage/LocalKeyPath;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 249
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private resetShareItem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->create(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, "createBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 377
    iget-object v4, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v4, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 394
    :goto_0
    return-void

    .line 381
    :cond_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v5, "profile.jpg"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 382
    .local v3, "tempFile":Ljava/io/File;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, v0, v3}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 383
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 385
    .local v1, "phototUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, "shareIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    const-string/jumbo v4, "android.intent.extra.TEXT"

    .line 390
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0d048f

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 391
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    sget-object v8, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->cubie_profile_intent_share:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 392
    invoke-static {v8}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 390
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v4, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static shouldSetCover(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    const-string/jumbo v0, "MAIN_INVITE_FRIEND_SET_COVER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadAndUpdateCover()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 436
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->execute([Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method private uploadAndUpdateUserIcon()V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 478
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->execute([Ljava/lang/Object;)V

    .line 479
    return-void
.end method


# virtual methods
.method changeCover()V
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00cd

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0d046e

    .line 62
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0d0186

    .line 63
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0d00c5

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void
.end method

.method changeNickname()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 117
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009c

    invoke-virtual {v7, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "editNickNameView":Landroid/view/View;
    const v3, 0x7f0801ad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 121
    .local v6, "editNicknameEditText":Landroid/widget/EditText;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "originalNickname":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0366

    .line 125
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03b3

    new-instance v5, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    invoke-direct {v5, p0, v6, v8}, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00c5

    .line 166
    invoke-virtual {v3, v4, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "alertDialog":Landroid/app/AlertDialog;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 169
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method

.method changeUserIcon()V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00ce

    .line 175
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0d046e

    .line 176
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0d0186

    .line 177
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0d00c5

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/liquable/nemo/profile/ProfileSettingFragment$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$3;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 227
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    .prologue
    .line 232
    const v0, 0x7f0300bb

    return v0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTempCover()Ljava/io/File;
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 242
    .local v0, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-virtual {v0}, Lcom/liquable/nemo/storage/LocalKeyPath;->getBaseName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "originalBaseName":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method protected getTitleText()I
    .locals 1

    .prologue
    .line 254
    const v0, 0x7f0d003a

    return v0
.end method

.method protected getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createMyIcon()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const v3, 0x7f0d00c8

    .line 264
    const/4 v2, -0x1

    if-eq v2, p2, :cond_0

    .line 290
    :goto_0
    return-void

    .line 267
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getTempUserIcon()Ljava/io/File;

    move-result-object v1

    .line 270
    .local v1, "tempUserIcon":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->uploadAndUpdateUserIcon()V

    .line 275
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->changeProfileUserIcon()V

    goto :goto_0

    .line 278
    .end local v1    # "tempUserIcon":Ljava/io/File;
    :pswitch_1
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getTempCover()Ljava/io/File;

    move-result-object v0

    .line 279
    .local v0, "tempCover":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->uploadAndUpdateCover()V

    .line 284
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->changeProfileCover()V

    goto :goto_0

    .line 287
    .end local v0    # "tempCover":Ljava/io/File;
    :pswitch_2
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d01f9

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->setHasOptionsMenu(Z)V

    .line 296
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v1, 0x7f08036f

    .line 300
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 301
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 302
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 303
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    .line 307
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string/jumbo v1, "cubie_share_history.xml"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->resetShareItem()V

    .line 309
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 320
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 321
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->coverImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$4;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->nicknameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->nicknameTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$5;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->iconImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$6;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->shouldSetCover(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeCover()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 358
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 369
    invoke-super {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 371
    :goto_0
    return v0

    .line 360
    :sswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeUserIcon()V

    .line 371
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :sswitch_1
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeCover()V

    goto :goto_1

    .line 366
    :sswitch_2
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeNickname()V

    goto :goto_1

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08036b -> :sswitch_2
        0x7f080378 -> :sswitch_0
        0x7f080379 -> :sswitch_1
    .end sparse-switch
.end method
