.class final Lcom/crittercism/app/Crittercism$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/app/Crittercism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/app/Crittercism;


# direct methods
.method constructor <init>(Lcom/crittercism/app/Crittercism;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/Crittercism$1;->a:Lcom/crittercism/app/Crittercism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->m()Ljava/lang/String;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/app/Crittercism;Z)V

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crittercism/app/Crittercism;->m()Ljava/lang/String;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/crittercism/app/Crittercism;->b(Lcom/crittercism/app/Crittercism;Z)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/app/Crittercism;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lcom/crittercism/app/Crittercism$c;

    if-nez v1, :cond_1

    new-instance v1, Lcom/crittercism/app/Crittercism$c;

    iget-object v2, p0, Lcom/crittercism/app/Crittercism$1;->a:Lcom/crittercism/app/Crittercism;

    invoke-direct {v1, v2, v0}, Lcom/crittercism/app/Crittercism$c;-><init>(Lcom/crittercism/app/Crittercism;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->p()Lcrittercism/android/d;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->n()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.crittercism.prefs.did"

    invoke-static {v0, v1}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->o()Lcrittercism/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->p()Lcrittercism/android/d;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->n()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.crittercism.prefs.did"

    invoke-static {v1, v2, v0}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->o()Lcrittercism/android/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->b()V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Lcom/crittercism/app/Crittercism;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;Z)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception performing async disk io and finishing initialization: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deviceID is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
