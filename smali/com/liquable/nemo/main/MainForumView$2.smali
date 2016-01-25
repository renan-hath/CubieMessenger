.class Lcom/liquable/nemo/main/MainForumView$2;
.super Ljava/lang/Object;
.source "MainForumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView;->createViewForForum(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 99
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$2;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$2;->this$0:Lcom/liquable/nemo/main/MainForumView;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainForumView$2;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/liquable/nemo/forum/BoardCategoryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainForumView;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
