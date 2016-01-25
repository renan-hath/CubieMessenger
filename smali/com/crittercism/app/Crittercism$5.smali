.class final Lcom/crittercism/app/Crittercism$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/app/Crittercism;->sendAppLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/crittercism/app/Crittercism$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/crittercism/app/Crittercism$a;-><init>(B)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->d(Lcom/crittercism/app/Crittercism;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->d(Lcom/crittercism/app/Crittercism;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->d(Lcom/crittercism/app/Crittercism;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Crittercism"

    const-string/jumbo v3, "Exception in Thread in sendAppLoadData"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
