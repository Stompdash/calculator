require 'gtk3'

class Calculator
  def click(sender)
    @builder.get_object('screen').label = sender.label
  end

  def initialize
    Gtk.init

    @builder = Gtk::Builder.new
    @builder.add_from_file('calculator.glade')
    @builder.connect_signals { |handler| method(handler) }

    window1 = @builder.get_object('window1')
    window1.show_all

    Gtk.main
  end

  def gtk_main_quit
    puts 'Gtk.main_quit'
    Gtk.main_quit
  end
end

calculator = Calculator.new
