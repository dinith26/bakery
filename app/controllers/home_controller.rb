class HomeController < ApplicationController
  def index
    @products = Product.all
  end

  def details
    products = Product.all

    render json: { 'status' => 'success', 'data' => products }
  end

  def result(val, itm)
    return val.to_i.remainder(itm)
  end

  def cal
    # get the values from ajax request
    vegemite = params[:vegemite]
    blueberry = params[:blueberry]
    croissant = params[:croissant]

    @vg_pack = ""
    @bl_pack = ""
    @cr_pack = ""

    if vegemite != ''
      veg = Product.where(name: 'Vegemite Scroll').first
      veg.package.each do | item |
        pack_count = item.packs.to_i
        if vegemite.to_i == item.packs.to_i
          no_of_pack = vegemite.to_i / pack_count
          pack_price = item.price.to_f * no_of_pack
          @vg_pack += vegemite.to_s + " " + veg.code + " $" + pack_price.to_s + " - " + no_of_pack.to_s + " x $" + item.price
        else
          if result(vegemite.to_i, item.packs.to_i) == 0
            no_of_pack = vegemite.to_i / pack_count
            pack_price = item.price.to_f * no_of_pack
            @vg_pack += vegemite.to_s + " " + veg.code + " $" + pack_price.to_s + " - " + no_of_pack.to_s + " x $" + item.price
          end
        end
      end

    end

    if blueberry != ''
      blu = Product.where(name: 'Blueberry Muffin').first

      blu.package.each do | item |
        pack_count = item.packs.to_i
        if blueberry.to_i == item.packs.to_i
          no_of_pack = blueberry.to_i / pack_count
          pack_price = item.price.to_f * no_of_pack
          @bl_pack += blueberry.to_s + " " + blu.code + " $" + item.price.to_s + " - " + no_of_pack.to_s + " x $" + item.price
        else
          if result(blueberry.to_i, item.packs.to_i) == 0
            no_of_pack = blueberry.to_i / pack_count
            pack_price = item.price.to_f * no_of_pack
            @bl_pack += blueberry.to_s + " " + blu.code + " $" + item.price.to_s + " - " + no_of_pack.to_s + " x $" + item.price
          end
        end
      end
    end

    if croissant != ''
      cro = Product.where(name: 'Croissant').first

      cro.package.each do | item |
        pack_count = item.packs.to_i
        if croissant.to_i == item.packs.to_i
          no_of_pack = croissant.to_i / pack_count
          pack_price = item.price.to_f * no_of_pack
          @cr_pack += croissant.to_s + " " + cro.code + " $" + item.price.to_s + " - " + no_of_pack.to_s + " x $" + item.price
        else
          if result(croissant.to_i, item.packs.to_i) == 0
            no_of_pack = croissant.to_i / pack_count
            pack_price = item.price.to_f * no_of_pack
            @cr_pack += croissant.to_s + " " + cro.code + " $" + item.price.to_s + " - " + no_of_pack.to_s + " x $" + item.price
          end
        end
      end
    end
    render json: { 'status' => 'success', 'data' => [@vg_pack, @bl_pack, @cr_pack] }
  end
end
