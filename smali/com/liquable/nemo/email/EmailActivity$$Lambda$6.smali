.class final synthetic Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/email/EmailActivity;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;->arg$1:Lcom/liquable/nemo/email/EmailActivity;

    iput-object p2, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;->arg$2:Landroid/view/View;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;-><init>(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;-><init>(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;->arg$1:Lcom/liquable/nemo/email/EmailActivity;

    iget-object v1, p0, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;->arg$2:Landroid/view/View;

    # invokes: Lcom/liquable/nemo/email/EmailActivity;->lambda$null$31(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/email/EmailActivity;->access$lambda$5(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)V

    return-void
.end method
