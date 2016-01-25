.class Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
.super Ljava/lang/Object;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessMessageResult"
.end annotation


# instance fields
.field final newVisibleMessage:Z

.field final success:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "newMessage"    # Z

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->success:Z

    .line 197
    iput-boolean p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->newVisibleMessage:Z

    .line 198
    return-void
.end method

.method public static fail()Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;

    invoke-direct {v0, v1, v1}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;-><init>(ZZ)V

    return-object v0
.end method

.method public static success(Z)Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;
    .locals 2
    .param p0, "isNewVisibleMessage"    # Z

    .prologue
    .line 188
    new-instance v0, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public isNewVisibleMessage()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->newVisibleMessage:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$ProcessMessageResult;->success:Z

    return v0
.end method
