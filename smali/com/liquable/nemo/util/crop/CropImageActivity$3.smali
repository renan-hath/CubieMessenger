.class Lcom/liquable/nemo/util/crop/CropImageActivity$3;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CropImageActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/CropImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$3;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$3;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->setResult(I)V

    .line 414
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$3;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->finish()V

    .line 415
    return-void
.end method
