.class final synthetic Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/chat/model/ChattingManager;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;->arg$1:Lcom/liquable/nemo/chat/model/ChattingManager;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$$Lambda$2;->arg$1:Lcom/liquable/nemo/chat/model/ChattingManager;

    check-cast p1, Ljava/lang/Void;

    # invokes: Lcom/liquable/nemo/chat/model/ChattingManager;->lambda$null$15(Ljava/lang/Void;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$lambda$1(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/lang/Void;)V

    return-void
.end method
