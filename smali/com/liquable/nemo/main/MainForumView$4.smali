.class Lcom/liquable/nemo/main/MainForumView$4;
.super Ljava/lang/Object;
.source "MainForumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView;->nextTutorial(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$4;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$4;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # operator++ for: Lcom/liquable/nemo/main/MainForumView;->step:I
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$208(Lcom/liquable/nemo/main/MainForumView;)I

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$4;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$300(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;->onClick(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$4;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # invokes: Lcom/liquable/nemo/main/MainForumView;->shouldShowTutorial()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$400(Lcom/liquable/nemo/main/MainForumView;)V

    .line 183
    return-void
.end method
