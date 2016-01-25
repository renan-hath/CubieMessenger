.class Lcom/liquable/nemo/main/MainCameraView$8;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$8;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$8;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;->onGalleryButtonClicked()V

    .line 542
    return-void
.end method
