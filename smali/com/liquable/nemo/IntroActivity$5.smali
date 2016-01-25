.class Lcom/liquable/nemo/IntroActivity$5;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/IntroActivity;

.field final synthetic val$mGestureListener:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/IntroActivity;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity$5;->this$0:Lcom/liquable/nemo/IntroActivity;

    iput-object p2, p0, Lcom/liquable/nemo/IntroActivity$5;->val$mGestureListener:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$5;->this$0:Lcom/liquable/nemo/IntroActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/IntroActivity;->autoPlayIntro:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/IntroActivity;->access$1002(Lcom/liquable/nemo/IntroActivity;Z)Z

    .line 256
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$5;->this$0:Lcom/liquable/nemo/IntroActivity;

    const/16 v1, 0x1f4

    # setter for: Lcom/liquable/nemo/IntroActivity;->fadeDuration:I
    invoke-static {v0, v1}, Lcom/liquable/nemo/IntroActivity;->access$702(Lcom/liquable/nemo/IntroActivity;I)I

    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$5;->val$mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    const/4 v0, 0x1

    return v0
.end method
