.class final enum Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;
.super Ljava/lang/Enum;
.source "DetectExternalImageIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

.field public static final enum DELETED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

.field public static final enum DETECTED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

.field public static final enum SHARED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

.field public static final enum START_SHARING_PICTURE:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    const-string/jumbo v1, "DETECTED"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->DETECTED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    new-instance v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    const-string/jumbo v1, "SHARED"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->SHARED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    new-instance v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    const-string/jumbo v1, "DELETED"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->DELETED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    new-instance v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    const-string/jumbo v1, "START_SHARING_PICTURE"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->START_SHARING_PICTURE:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    sget-object v1, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->DETECTED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->SHARED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->DELETED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->START_SHARING_PICTURE:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->$VALUES:[Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->$VALUES:[Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    return-object v0
.end method
