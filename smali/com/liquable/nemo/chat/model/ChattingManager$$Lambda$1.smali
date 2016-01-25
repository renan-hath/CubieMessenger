.class final synthetic Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/chat/model/ChattingManager;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;->arg$1:Lcom/liquable/nemo/chat/model/ChattingManager;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/chat/model/ChattingManager;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/chat/model/ChattingManager;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$1;->arg$1:Lcom/liquable/nemo/chat/model/ChattingManager;

    # invokes: Lcom/liquable/nemo/chat/model/ChattingManager;->lambda$changeToUseOfflineSequence$17()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$lambda$0(Lcom/liquable/nemo/chat/model/ChattingManager;)V

    return-void
.end method
