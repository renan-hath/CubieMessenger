.class final enum Lcom/liquable/nemo/android/service/ActiveIntentService$Action;
.super Ljava/lang/Enum;
.source "ActiveIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/ActiveIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/ActiveIntentService$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

.field public static final enum SUBMIT_ACTIVATION:Lcom/liquable/nemo/android/service/ActiveIntentService$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    const-string/jumbo v1, "SUBMIT_ACTIVATION"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->SUBMIT_ACTIVATION:Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    sget-object v1, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->SUBMIT_ACTIVATION:Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->$VALUES:[Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ActiveIntentService$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/ActiveIntentService$Action;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->$VALUES:[Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    return-object v0
.end method
