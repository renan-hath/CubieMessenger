.class public final enum Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
.super Ljava/lang/Enum;
.source "TargetIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/targetedintent/TargetIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/targetedintent/TargetIntent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

.field public static final enum IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

.field public static final enum PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

.field public static final enum VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;


# instance fields
.field typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    const-string/jumbo v1, "PLAIN_TEXT"

    const-string/jumbo v2, "text/plain"

    invoke-direct {v0, v1, v3, v2}, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    new-instance v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    const-string/jumbo v1, "IMAGE"

    const-string/jumbo v2, "image/*"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    new-instance v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "video/*"

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    sget-object v1, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->$VALUES:[Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "typeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->typeString:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->$VALUES:[Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    return-object v0
.end method


# virtual methods
.method public toIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method
