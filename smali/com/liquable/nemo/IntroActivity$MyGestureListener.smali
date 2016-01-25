.class Lcom/liquable/nemo/IntroActivity$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/IntroActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/IntroActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/IntroActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/IntroActivity;Lcom/liquable/nemo/IntroActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/IntroActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/IntroActivity$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/liquable/nemo/IntroActivity$MyGestureListener;-><init>(Lcom/liquable/nemo/IntroActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 34
    const/high16 v0, 0x43d20000    # 420.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/IntroActivity;

    # invokes: Lcom/liquable/nemo/IntroActivity;->swipeRight()V
    invoke-static {v0}, Lcom/liquable/nemo/IntroActivity;->access$000(Lcom/liquable/nemo/IntroActivity;)V

    .line 39
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_1
    const/high16 v0, -0x3c2e0000    # -420.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$MyGestureListener;->this$0:Lcom/liquable/nemo/IntroActivity;

    # invokes: Lcom/liquable/nemo/IntroActivity;->swipeLeft()V
    invoke-static {v0}, Lcom/liquable/nemo/IntroActivity;->access$100(Lcom/liquable/nemo/IntroActivity;)V

    goto :goto_0
.end method
