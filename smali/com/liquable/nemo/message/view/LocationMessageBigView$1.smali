.class Lcom/liquable/nemo/message/view/LocationMessageBigView$1;
.super Ljava/lang/Object;
.source "LocationMessageBigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/LocationMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/LocationMessageBigView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/LocationMessageBigView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/LocationMessageBigView;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView$1;->this$0:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 25
    return-void
.end method
