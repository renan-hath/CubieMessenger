.class final enum Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;
.super Ljava/lang/Enum;
.source "MusicRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/MusicRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckBoxTagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

.field public static final enum MORE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

.field public static final enum MUSIC:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

.field public static final enum NONE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->NONE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    new-instance v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    const-string/jumbo v1, "MORE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MORE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    new-instance v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    const-string/jumbo v1, "MUSIC"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MUSIC:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    sget-object v1, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->NONE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MORE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MUSIC:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->$VALUES:[Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->$VALUES:[Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    return-object v0
.end method
