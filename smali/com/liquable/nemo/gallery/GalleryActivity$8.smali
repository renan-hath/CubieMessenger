.class Lcom/liquable/nemo/gallery/GalleryActivity$8;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$8;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iput-object p2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$8;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$8;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 364
    const/4 v0, 0x1

    return v0
.end method