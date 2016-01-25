.class Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/gallery/GalleryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/gallery/GalleryActivity$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iget-boolean v0, v0, Lcom/liquable/nemo/gallery/GalleryActivity;->canSwipe:Z

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->swipeRight()V

    goto :goto_0

    .line 60
    :cond_2
    const/high16 v0, -0x3c060000    # -500.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->swipeLeft()V

    goto :goto_0
.end method
