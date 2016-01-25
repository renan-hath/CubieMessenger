.class final Lcom/liquable/nemo/FutureExceptionHandler;
.super Ljava/lang/Object;
.source "FutureExceptionHandler.java"

# interfaces
.implements Lcom/liquable/future/ExceptionHandler;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/FutureExceptionHandler;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public handleMasked(Ljava/lang/Exception;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "oldEx"    # Ljava/lang/Exception;
    .param p2, "newEx"    # Ljava/lang/Exception;

    .prologue
    .line 26
    const-string/jumbo v0, "future"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception mask by new one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    return-void
.end method

.method public handleUncaught(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 31
    instance-of v1, p1, Lcom/liquable/nemo/client/AsyncException;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/liquable/nemo/FutureExceptionHandler;->context:Landroid/content/Context;

    check-cast p1, Lcom/liquable/nemo/client/AsyncException;

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/liquable/nemo/client/AsyncException;->getErrorMessageResId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 45
    :goto_0
    return-void

    .line 33
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v1, p1, Lcom/liquable/nemo/model/DomainException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/liquable/nemo/model/DomainException;

    .line 35
    .local v0, "domainEx":Lcom/liquable/nemo/model/DomainException;
    iget-object v1, p0, Lcom/liquable/nemo/FutureExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/model/DomainException;->getI18nValues()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v0    # "domainEx":Lcom/liquable/nemo/model/DomainException;
    :cond_1
    const-string/jumbo v1, "FutureUncaught"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
