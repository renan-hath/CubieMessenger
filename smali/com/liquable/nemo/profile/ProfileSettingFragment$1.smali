.class Lcom/liquable/nemo/profile/ProfileSettingFragment$1;
.super Ljava/lang/Object;
.source "ProfileSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v3, 0x280

    const/4 v1, 0x1

    .line 67
    packed-switch p2, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 74
    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .line 76
    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getTempCover()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    move v2, v1

    move v4, v3

    move v6, v1

    .line 69
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 77
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/16 v1, 0xd

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 80
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 104
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
