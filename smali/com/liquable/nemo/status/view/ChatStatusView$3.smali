.class Lcom/liquable/nemo/status/view/ChatStatusView$3;
.super Ljava/lang/Object;
.source "ChatStatusView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/status/view/ChatStatusView;->init(Lcom/liquable/nemo/util/ImageLoader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/status/view/ChatStatusView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/status/view/ChatStatusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/status/view/ChatStatusView;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$3;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method
