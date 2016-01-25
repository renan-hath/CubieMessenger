.class Lcom/liquable/nemo/util/crop/CropImageActivity$4;
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
    .line 418
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$4;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$4;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # invokes: Lcom/liquable/nemo/util/crop/CropImageActivity;->onSaveClicked()V
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$1000(Lcom/liquable/nemo/util/crop/CropImageActivity;)V

    .line 422
    return-void
.end method
