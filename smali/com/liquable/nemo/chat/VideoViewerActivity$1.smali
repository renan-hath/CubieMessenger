.class Lcom/liquable/nemo/chat/VideoViewerActivity$1;
.super Ljava/lang/Object;
.source "VideoViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/VideoViewerActivity;->initVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 85
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_0
.end method
