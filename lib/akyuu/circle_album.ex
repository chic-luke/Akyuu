defmodule Akyuu.CircleAlbum do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "circles_albums" do
    belongs_to :circle, Akyuu.Circle, primary_key: true
    belongs_to :album, Akyuu.Album, primary_key: true

    timestamps()
  end

  @doc false
  def changeset(circles_albums, attrs) do
    circles_albums
    |> cast(attrs, [:circle_id, :album_id])
  end
end
