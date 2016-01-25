.class Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;
.super Ljava/lang/Object;
.source "SelectMyAccountIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xfa

    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 159
    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .line 161
    # getter for: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->tempFileFromGallery:Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$300(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)Ljava/io/File;

    move-result-object v7

    move v2, v1

    move v4, v3

    move v6, v1

    .line 154
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 162
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$4;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    return-void
.end method
