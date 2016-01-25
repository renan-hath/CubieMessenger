.class public final enum Lcom/liquable/nemo/regist/RegistrationType;
.super Ljava/lang/Enum;
.source "RegistrationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/regist/RegistrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/regist/RegistrationType;

.field public static final enum FACEBOOOK:Lcom/liquable/nemo/regist/RegistrationType;

.field public static final enum PHONE:Lcom/liquable/nemo/regist/RegistrationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/liquable/nemo/regist/RegistrationType;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/regist/RegistrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/regist/RegistrationType;->PHONE:Lcom/liquable/nemo/regist/RegistrationType;

    new-instance v0, Lcom/liquable/nemo/regist/RegistrationType;

    const-string/jumbo v1, "FACEBOOOK"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/regist/RegistrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/regist/RegistrationType;->FACEBOOOK:Lcom/liquable/nemo/regist/RegistrationType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/regist/RegistrationType;

    sget-object v1, Lcom/liquable/nemo/regist/RegistrationType;->PHONE:Lcom/liquable/nemo/regist/RegistrationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/regist/RegistrationType;->FACEBOOOK:Lcom/liquable/nemo/regist/RegistrationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/regist/RegistrationType;->$VALUES:[Lcom/liquable/nemo/regist/RegistrationType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/regist/RegistrationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/regist/RegistrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/regist/RegistrationType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/regist/RegistrationType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/regist/RegistrationType;->$VALUES:[Lcom/liquable/nemo/regist/RegistrationType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/regist/RegistrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/regist/RegistrationType;

    return-object v0
.end method
