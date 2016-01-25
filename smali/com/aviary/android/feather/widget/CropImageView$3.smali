.class Lcom/aviary/android/feather/widget/CropImageView$3;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/CropImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/CropImageView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/CropImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView$3;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$3;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView$3;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    iget-wide v1, v1, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView$3;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/CropImageView;->getAspectRatioIsFixed()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/CropImageView;->setAspectRatio(DZ)V

    .line 444
    return-void
.end method
