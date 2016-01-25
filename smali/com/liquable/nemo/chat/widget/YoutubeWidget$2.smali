.class Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;
.super Ljava/lang/Object;
.source "YoutubeWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/YoutubeWidget;->setOnClippedButtonClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

.field final synthetic val$onClippedButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->val$onClippedButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2$1;-><init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    const/4 v0, 0x0

    return v0
.end method
