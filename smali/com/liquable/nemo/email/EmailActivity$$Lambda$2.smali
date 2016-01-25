.class final synthetic Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/email/EmailActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/email/EmailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;->arg$1:Lcom/liquable/nemo/email/EmailActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/email/EmailActivity;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;-><init>(Lcom/liquable/nemo/email/EmailActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;-><init>(Lcom/liquable/nemo/email/EmailActivity;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;->arg$1:Lcom/liquable/nemo/email/EmailActivity;

    check-cast p1, Lcom/liquable/nemo/model/account/ProfileDto;

    # invokes: Lcom/liquable/nemo/email/EmailActivity;->lambda$onLoggedInCreate$33(Lcom/liquable/nemo/model/account/ProfileDto;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/email/EmailActivity;->access$lambda$1(Lcom/liquable/nemo/email/EmailActivity;Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method
