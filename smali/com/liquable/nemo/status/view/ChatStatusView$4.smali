.class Lcom/liquable/nemo/status/view/ChatStatusView$4;
.super Ljava/lang/Object;
.source "ChatStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/status/view/ChatStatusView;->showIcon(Lcom/liquable/nemo/friend/model/Account;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

.field final synthetic val$iconDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/status/view/ChatStatusView;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/status/view/ChatStatusView;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$4;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    iput-object p2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$4;->val$iconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$4;->val$iconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 378
    return-void
.end method
