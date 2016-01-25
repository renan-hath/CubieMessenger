.class Lcom/liquable/nemo/main/MainRecommendForumView$4;
.super Ljava/lang/Object;
.source "MainRecommendForumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainRecommendForumView;->createViewForRecommendView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainRecommendForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$4;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$4;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView$4;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainRecommendForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/liquable/nemo/forum/BoardCategoryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainRecommendForumView;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
