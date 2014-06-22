class TestController < UITableViewController
  def viewDidLoad
    super

    @data = []

    rmq.stylesheet = TestControllerStylesheet

    view.tap do |table|
      table.delegate = self
      table.dataSource = self
      rmq(table).apply_style :table
    end

    self.title = "Test"
  end

  def tableView(table_view, numberOfRowsInSection: section)
    @data.count
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    table_view.dequeueReusableCellWithIdentifier("TEST") || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: "TEST")
    end.tap do |c|
      c.textLabel.text = @test[index_path.row].name
    end
  end

  def supportedInterfaceOrientations
    UIInterfaceOrientationMaskLandscape
  end

  def willAnimateRotationToInterfaceOrientation(orientation, duration: duration)
    rmq.all.reapply_styles
  end
end
