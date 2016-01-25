.class final synthetic Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/forum/view/ArticleReplyView;

.field private final arg$2:Lcom/liquable/nemo/forum/model/article/ArticleReply;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;->arg$1:Lcom/liquable/nemo/forum/view/ArticleReplyView;

    iput-object p2, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;->arg$2:Lcom/liquable/nemo/forum/model/article/ArticleReply;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;-><init>(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;-><init>(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;->arg$1:Lcom/liquable/nemo/forum/view/ArticleReplyView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;->arg$2:Lcom/liquable/nemo/forum/model/article/ArticleReply;

    # invokes: Lcom/liquable/nemo/forum/view/ArticleReplyView;->lambda$update$36(Lcom/liquable/nemo/forum/model/article/ArticleReply;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->access$lambda$0(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;Landroid/view/View;)V

    return-void
.end method
