.class Lcom/liquable/nemo/widget/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/ExpandableTextView;->hide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/ExpandableTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/ExpandableTextView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/widget/ExpandableTextView$1;->this$0:Lcom/liquable/nemo/widget/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView$1;->this$0:Lcom/liquable/nemo/widget/ExpandableTextView;

    # getter for: Lcom/liquable/nemo/widget/ExpandableTextView;->hide:Z
    invoke-static {v0}, Lcom/liquable/nemo/widget/ExpandableTextView;->access$000(Lcom/liquable/nemo/widget/ExpandableTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView$1;->this$0:Lcom/liquable/nemo/widget/ExpandableTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ExpandableTextView;->setHeight(I)V

    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/widget/ExpandableTextView$1;->this$0:Lcom/liquable/nemo/widget/ExpandableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ExpandableTextView;->setVisibility(I)V

    .line 37
    :cond_0
    return-void
.end method
