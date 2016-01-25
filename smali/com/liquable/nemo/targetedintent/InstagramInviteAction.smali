.class public Lcom/liquable/nemo/targetedintent/InstagramInviteAction;
.super Lcom/liquable/nemo/targetedintent/InviteAction;
.source "InstagramInviteAction.java"


# instance fields
.field private instagramBitmapFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/liquable/nemo/targetedintent/InviteAction;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/targetedintent/InstagramInviteAction;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/targetedintent/InstagramInviteAction;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->onPositiveButtonClick(Landroid/content/Context;)V

    return-void
.end method

.method private generateInstagramBitmapFile(Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 47
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 48
    .local v1, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "coverFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03eb

    .line 52
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03b3

    new-instance v6, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;

    invoke-direct {v6, p0, p1}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;-><init>(Lcom/liquable/nemo/targetedintent/InstagramInviteAction;Landroid/content/Context;)V

    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 72
    :cond_1
    :goto_0
    return-object v3

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->create(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    .local v2, "createBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 70
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v5, "profile.jpg"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 71
    .local v3, "tempFile":Ljava/io/File;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private onPositiveButtonClick(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/liquable/nemo/targetedintent/InviteAction;->startActivity(Landroid/content/Context;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected decorate(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->instagramBitmapFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, "phototUri":Landroid/net/Uri;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "image/*"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public startActivity(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->generateInstagramBitmapFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->instagramBitmapFile:Ljava/io/File;

    .line 82
    iget-object v3, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->instagramBitmapFile:Ljava/io/File;

    if-nez v3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03eb

    .line 87
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03b3

    new-instance v5, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;

    invoke-direct {v5, p0, p1}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;-><init>(Lcom/liquable/nemo/targetedintent/InstagramInviteAction;Landroid/content/Context;)V

    .line 88
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 96
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 97
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0801bc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 100
    .local v7, "copyInstagramContentBtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;-><init>(Lcom/liquable/nemo/targetedintent/InstagramInviteAction;Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const/16 v3, 0xc8

    invoke-static {p1, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v9

    .line 111
    .local v9, "side":I
    iget-object v3, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->instagramBitmapFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v9, v9}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 115
    .local v6, "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    const v3, 0x7f0801ba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    move v3, v2

    move v4, v2

    move v5, v2

    .line 119
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
