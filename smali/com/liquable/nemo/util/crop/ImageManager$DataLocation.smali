.class public final enum Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

.field public static final enum ALL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->NONE:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    new-instance v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    const-string/jumbo v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->INTERNAL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    new-instance v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    const-string/jumbo v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->EXTERNAL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    new-instance v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->ALL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    sget-object v1, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->NONE:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->INTERNAL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->EXTERNAL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->ALL:Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->$VALUES:[Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->$VALUES:[Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/crop/ImageManager$DataLocation;

    return-object v0
.end method
