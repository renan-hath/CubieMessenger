.class public Lcom/liquable/nemo/client/ErrorServiceResult;
.super Lcom/liquable/nemo/client/ServiceResult;
.source "ErrorServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/client/ServiceResult",
        "<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/liquable/nemo/client/ServiceResult;-><init>(Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/liquable/nemo/client/ErrorServiceResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/liquable/nemo/client/ErrorServiceResult;->getResult()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
