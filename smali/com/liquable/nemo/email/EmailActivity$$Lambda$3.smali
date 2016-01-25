.class final synthetic Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/email/EmailActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/email/EmailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;->arg$1:Lcom/liquable/nemo/email/EmailActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/email/EmailActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;-><init>(Lcom/liquable/nemo/email/EmailActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;-><init>(Lcom/liquable/nemo/email/EmailActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;->arg$1:Lcom/liquable/nemo/email/EmailActivity;

    # invokes: Lcom/liquable/nemo/email/EmailActivity;->lambda$onLoggedInCreate$34()V
    invoke-static {v0}, Lcom/liquable/nemo/email/EmailActivity;->access$lambda$2(Lcom/liquable/nemo/email/EmailActivity;)V

    return-void
.end method
