.class Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/liquable/nemo/util/crop/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/liquable/nemo/util/crop/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/ImageViewTouchBase;Lcom/liquable/nemo/util/crop/RotateBitmap;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/ImageViewTouchBase;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;->this$0:Lcom/liquable/nemo/util/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/liquable/nemo/util/crop/RotateBitmap;

    iput-boolean p3, p0, Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;->this$0:Lcom/liquable/nemo/util/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/liquable/nemo/util/crop/RotateBitmap;

    iget-boolean v2, p0, Lcom/liquable/nemo/util/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/liquable/nemo/util/crop/RotateBitmap;Z)V

    .line 282
    return-void
.end method
