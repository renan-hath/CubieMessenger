.class final synthetic Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/model/forum/ForumBoardDto;

.field private final arg$2:Lcom/liquable/nemo/forum/model/article/ArticleReplier;

.field private final arg$3:Lcom/liquable/nemo/forum/model/article/Article;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->arg$1:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->arg$2:Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    iput-object p3, p0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->arg$3:Lcom/liquable/nemo/forum/model/article/Article;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;-><init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;-><init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->arg$1:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->arg$2:Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->arg$3:Lcom/liquable/nemo/forum/model/article/Article;

    # invokes: Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->lambda$handleForumReplyDigestIntent$25(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->access$lambda$0(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V

    return-void
.end method
