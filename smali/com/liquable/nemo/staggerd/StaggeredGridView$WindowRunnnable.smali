.class Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p2, "x1"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$1;

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # invokes: Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$2000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    .line 657
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # invokes: Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$2100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
