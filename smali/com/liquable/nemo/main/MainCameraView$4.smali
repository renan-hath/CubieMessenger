.class Lcom/liquable/nemo/main/MainCameraView$4;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 351
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$4;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isVideoMode"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$4;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->setVideoOrPhotoMode()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$600(Lcom/liquable/nemo/main/MainCameraView;)V

    .line 355
    return-void
.end method
