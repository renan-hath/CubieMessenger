.class final enum Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
.super Ljava/lang/Enum;
.source "LocationPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/map/LocationPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/map/LocationPickerActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

.field public static final enum MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

.field public static final enum SEARCH:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    const-string/jumbo v1, "MOVE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    new-instance v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    const-string/jumbo v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->MOVE:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->$VALUES:[Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/map/LocationPickerActivity$Mode;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->$VALUES:[Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/map/LocationPickerActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/map/LocationPickerActivity$Mode;

    return-object v0
.end method
