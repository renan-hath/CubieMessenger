.class Lcom/liquable/nemo/forum/CreateArticleFragment$2;
.super Ljava/lang/Object;
.source "CreateArticleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/CreateArticleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/CreateArticleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/CreateArticleFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    # invokes: Lcom/liquable/nemo/forum/CreateArticleFragment;->openGallery()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->access$300(Lcom/liquable/nemo/forum/CreateArticleFragment;)V

    .line 183
    return-void
.end method
